import {
  Button,
  Modal,
  ModalContent,
  ModalHeader,
  ModalBody,
  ModalFooter,
  Image,
} from "@nextui-org/react";

function Foto({ datos, isOpen, onOpenChange }) {
  const url = process.env.NEXT_PUBLIC_SERVER_URI;

  return (
    <>
      <Modal
        isOpen={isOpen}
        onOpenChange={onOpenChange}
        placement="center"
        size="5xl"
        scrollBehavior="outside"
      >
        <ModalContent>
          {(onClose) => (
            <>
              {datos && (
                <>
                  <ModalHeader>Foto</ModalHeader>
                  <ModalBody>
                    <div className="flex justify-center">
                      <Image
                        isZoomed
                        radius="sm"
                        src={`${url}` + `${datos}`}
                        alt={"View Foto"}
                        loading="lazy"
                      />
                    </div>
                  </ModalBody>
                  <ModalFooter>
                    <Button color="primary" onPress={onClose}>
                      Cerrar
                    </Button>
                  </ModalFooter>
                </>
              )}
            </>
          )}
        </ModalContent>
      </Modal>
    </>
  );
}

export default Foto;
